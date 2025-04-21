// Copyright Squizzle Games


#include "Player/AuraPlayerState.h"

AAuraPlayerState::AAuraPlayerState()
{
	// How often the server will try to update the client
	SetNetUpdateFrequency(100.f);
}
