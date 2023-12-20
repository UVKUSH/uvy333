part of 'profile_bloc.dart';

abstract class ProfileEvent {}

class LoadProfileDataEvent extends ProfileEvent {}

class EditProfileEvent extends ProfileEvent {
  final String newBio;
  final String newProfilePIC;

  EditProfileEvent({required this.newBio, required this.newProfilePIC});
}
