function group = CommandMessageGroup(RCD_ID)
    %rcd2.network.CommandMessageGroup Get the multicast group address for the command message.
    % 
    % PARAMETERS
    % RCD_ID ... The ID of the RCD in range [0,255]. If no ID is given, 0 is selected.
    % 
    % RETURN
    % group ... The IPv4 multicast group address.
    if(nargin < 1)
        RCD_ID = uint8(0);
    end
    assert(isreal(RCD_ID) && isscalar(RCD_ID), 'RCD_ID must be real and scalar!');
    group = uint8([239, uint8('R'), uint8('C'), uint8(RCD_ID)]);
end

