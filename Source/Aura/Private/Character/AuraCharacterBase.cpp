// Copyright Squizzle Games


#include "Character/AuraCharacterBase.h"

// Sets default values
AAuraCharacterBase::AAuraCharacterBase()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	// Create Weapon as point to SkeletalMeshComponent
	Weapon = CreateDefaultSubobject<USkeletalMeshComponent>("Weapon");
	// Setup a socket for weapon attachment
	Weapon->SetupAttachment(GetMesh(), FName("WeaponHandSocket"));
	// Disable collision of weapon
	Weapon->SetCollisionEnabled(ECollisionEnabled::NoCollision);
}

// Called when the game starts or when spawned
void AAuraCharacterBase::BeginPlay()
{
	Super::BeginPlay();
	
}
