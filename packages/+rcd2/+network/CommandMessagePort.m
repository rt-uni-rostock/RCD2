function udpPort = CommandMessagePort(RCD_ID)
    %rcd2.network.CommandMessagePort Get the UDP port for the command message.
    % 
    % PARAMETERS
    % RCD_ID ... The ID of the RCD in range [0,255]. If no ID is given, 0 is selected.
    % 
    % RETURN
    % udpPort ... The UDP port.
    if(nargin < 1)
        RCD_ID = uint8(0);
    end
    assert(isreal(RCD_ID) && isscalar(RCD_ID), 'RCD_ID must be real and scalar!');
    udpPort = uint16(12500) + uint16(uint8(RCD_ID));
end

