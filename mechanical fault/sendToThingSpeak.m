function y = sendToThingSpeak(u)
    % Skip startup t=0 frame if RMS block hasn't completed its first AC cycle yet
    if any(isnan(u))
        y = 0;
        return;
    end
    persistent hasSentFirst;
    
    if isempty(hasSentFirst)
        hasSentFirst = true;
    else
        pause(16);
    end
    
    % 1. Push to ThingSpeak
    channelID = 0000000; % Replace with your ThingSpeak Channel ID
    writeKey = 'YOUR_THINGSPEAK_WRITE_API_KEY';
    try
        thingSpeakWrite(channelID, [u(1), u(2)], 'WriteKey', writeKey);
    catch ME
        disp(['ThingSpeak Error: ', ME.message]);
    end
    
    % 2. Push to Blynk Cloud (V1 = RMS Current, V2 = Trip Status)
    blynkToken = 'YOUR_BLYNK_AUTH_TOKEN';
    blynkUrl = ['https://blynk.cloud/external/api/batch/update?token=', ...
                blynkToken, '&V1=', num2str(u(1)), '&V2=', num2str(u(2))];
    try
        webread(blynkUrl);
        disp('Blynk update sent successfully!');
        disp('Project by Peter Atandi');
    catch ME
        disp(['Blynk Error: ', ME.message]);
    end
    
    y = 0;
end
