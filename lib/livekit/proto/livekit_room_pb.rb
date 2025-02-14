# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: livekit_room.proto

require 'google/protobuf'

require 'livekit_models_pb'
require 'livekit_egress_pb'


descriptor_data = "\n\x12livekit_room.proto\x12\x07livekit\x1a\x14livekit_models.proto\x1a\x14livekit_egress.proto\"\xe6\x01\n\x11\x43reateRoomRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x15\n\rempty_timeout\x18\x02 \x01(\r\x12\x18\n\x10max_participants\x18\x03 \x01(\r\x12\x0f\n\x07node_id\x18\x04 \x01(\t\x12\x10\n\x08metadata\x18\x05 \x01(\t\x12#\n\x06\x65gress\x18\x06 \x01(\x0b\x32\x13.livekit.RoomEgress\x12\x19\n\x11min_playout_delay\x18\x07 \x01(\r\x12\x19\n\x11max_playout_delay\x18\x08 \x01(\r\x12\x14\n\x0csync_streams\x18\t \x01(\x08\"\x9e\x01\n\nRoomEgress\x12\x31\n\x04room\x18\x01 \x01(\x0b\x32#.livekit.RoomCompositeEgressRequest\x12\x33\n\x0bparticipant\x18\x03 \x01(\x0b\x32\x1e.livekit.AutoParticipantEgress\x12(\n\x06tracks\x18\x02 \x01(\x0b\x32\x18.livekit.AutoTrackEgress\"!\n\x10ListRoomsRequest\x12\r\n\x05names\x18\x01 \x03(\t\"1\n\x11ListRoomsResponse\x12\x1c\n\x05rooms\x18\x01 \x03(\x0b\x32\r.livekit.Room\"!\n\x11\x44\x65leteRoomRequest\x12\x0c\n\x04room\x18\x01 \x01(\t\"\x14\n\x12\x44\x65leteRoomResponse\"\'\n\x17ListParticipantsRequest\x12\x0c\n\x04room\x18\x01 \x01(\t\"J\n\x18ListParticipantsResponse\x12.\n\x0cparticipants\x18\x01 \x03(\x0b\x32\x18.livekit.ParticipantInfo\"9\n\x17RoomParticipantIdentity\x12\x0c\n\x04room\x18\x01 \x01(\t\x12\x10\n\x08identity\x18\x02 \x01(\t\"\x1b\n\x19RemoveParticipantResponse\"X\n\x14MuteRoomTrackRequest\x12\x0c\n\x04room\x18\x01 \x01(\t\x12\x10\n\x08identity\x18\x02 \x01(\t\x12\x11\n\ttrack_sid\x18\x03 \x01(\t\x12\r\n\x05muted\x18\x04 \x01(\x08\":\n\x15MuteRoomTrackResponse\x12!\n\x05track\x18\x01 \x01(\x0b\x32\x12.livekit.TrackInfo\"\x8e\x01\n\x18UpdateParticipantRequest\x12\x0c\n\x04room\x18\x01 \x01(\t\x12\x10\n\x08identity\x18\x02 \x01(\t\x12\x10\n\x08metadata\x18\x03 \x01(\t\x12\x32\n\npermission\x18\x04 \x01(\x0b\x32\x1e.livekit.ParticipantPermission\x12\x0c\n\x04name\x18\x05 \x01(\t\"\x9b\x01\n\x1aUpdateSubscriptionsRequest\x12\x0c\n\x04room\x18\x01 \x01(\t\x12\x10\n\x08identity\x18\x02 \x01(\t\x12\x12\n\ntrack_sids\x18\x03 \x03(\t\x12\x11\n\tsubscribe\x18\x04 \x01(\x08\x12\x36\n\x12participant_tracks\x18\x05 \x03(\x0b\x32\x1a.livekit.ParticipantTracks\"\x1d\n\x1bUpdateSubscriptionsResponse\"\xb1\x01\n\x0fSendDataRequest\x12\x0c\n\x04room\x18\x01 \x01(\t\x12\x0c\n\x04\x64\x61ta\x18\x02 \x01(\x0c\x12&\n\x04kind\x18\x03 \x01(\x0e\x32\x18.livekit.DataPacket.Kind\x12\x1c\n\x10\x64\x65stination_sids\x18\x04 \x03(\tB\x02\x18\x01\x12\x1e\n\x16\x64\x65stination_identities\x18\x06 \x03(\t\x12\x12\n\x05topic\x18\x05 \x01(\tH\x00\x88\x01\x01\x42\x08\n\x06_topic\"\x12\n\x10SendDataResponse\";\n\x19UpdateRoomMetadataRequest\x12\x0c\n\x04room\x18\x01 \x01(\t\x12\x10\n\x08metadata\x18\x02 \x01(\t2\xe6\x06\n\x0bRoomService\x12\x37\n\nCreateRoom\x12\x1a.livekit.CreateRoomRequest\x1a\r.livekit.Room\x12\x42\n\tListRooms\x12\x19.livekit.ListRoomsRequest\x1a\x1a.livekit.ListRoomsResponse\x12\x45\n\nDeleteRoom\x12\x1a.livekit.DeleteRoomRequest\x1a\x1b.livekit.DeleteRoomResponse\x12W\n\x10ListParticipants\x12 .livekit.ListParticipantsRequest\x1a!.livekit.ListParticipantsResponse\x12L\n\x0eGetParticipant\x12 .livekit.RoomParticipantIdentity\x1a\x18.livekit.ParticipantInfo\x12Y\n\x11RemoveParticipant\x12 .livekit.RoomParticipantIdentity\x1a\".livekit.RemoveParticipantResponse\x12S\n\x12MutePublishedTrack\x12\x1d.livekit.MuteRoomTrackRequest\x1a\x1e.livekit.MuteRoomTrackResponse\x12P\n\x11UpdateParticipant\x12!.livekit.UpdateParticipantRequest\x1a\x18.livekit.ParticipantInfo\x12`\n\x13UpdateSubscriptions\x12#.livekit.UpdateSubscriptionsRequest\x1a$.livekit.UpdateSubscriptionsResponse\x12?\n\x08SendData\x12\x18.livekit.SendDataRequest\x1a\x19.livekit.SendDataResponse\x12G\n\x12UpdateRoomMetadata\x12\".livekit.UpdateRoomMetadataRequest\x1a\r.livekit.RoomBFZ#github.com/livekit/protocol/livekit\xaa\x02\rLiveKit.Proto\xea\x02\x0eLiveKit::Protob\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["livekit.RoomCompositeEgressRequest", "livekit_egress.proto"],
    ["livekit.Room", "livekit_models.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module LiveKit
  module Proto
    CreateRoomRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.CreateRoomRequest").msgclass
    RoomEgress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.RoomEgress").msgclass
    ListRoomsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ListRoomsRequest").msgclass
    ListRoomsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ListRoomsResponse").msgclass
    DeleteRoomRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DeleteRoomRequest").msgclass
    DeleteRoomResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DeleteRoomResponse").msgclass
    ListParticipantsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ListParticipantsRequest").msgclass
    ListParticipantsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ListParticipantsResponse").msgclass
    RoomParticipantIdentity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.RoomParticipantIdentity").msgclass
    RemoveParticipantResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.RemoveParticipantResponse").msgclass
    MuteRoomTrackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.MuteRoomTrackRequest").msgclass
    MuteRoomTrackResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.MuteRoomTrackResponse").msgclass
    UpdateParticipantRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.UpdateParticipantRequest").msgclass
    UpdateSubscriptionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.UpdateSubscriptionsRequest").msgclass
    UpdateSubscriptionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.UpdateSubscriptionsResponse").msgclass
    SendDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.SendDataRequest").msgclass
    SendDataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.SendDataResponse").msgclass
    UpdateRoomMetadataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.UpdateRoomMetadataRequest").msgclass
  end
end
