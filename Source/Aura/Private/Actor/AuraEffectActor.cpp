// Copyright Squizzle Games


#include "Actor/AuraEffectActor.h"
#include "AbilitySystemBlueprintLibrary.h"
#include "AbilitySystemComponent.h"

AAuraEffectActor::AAuraEffectActor()
{
	PrimaryActorTick.bCanEverTick = false;

	/** So we can add custom mesh in Blueprints for the effect actor */
	SetRootComponent(CreateDefaultSubobject<USceneComponent>("SceneRoot"));
}

void AAuraEffectActor::BeginPlay()
{
	Super::BeginPlay();
}

void AAuraEffectActor::ApplyEffectToTarget(AActor* TargetActor, TSubclassOf<UGameplayEffect> GameplayEffectClass)
{
	/** Get ability system from GAS static library as ASC
	 * Blueprint callable and handy way to get an ability system component of any actor in blueprint */
	UAbilitySystemComponent* TargetASC = UAbilitySystemBlueprintLibrary::GetAbilitySystemComponent(TargetActor);

	if (TargetASC == nullptr) return;

	check(GameplayEffectClass);

	/** return handle to effect context of TargetASC */
	FGameplayEffectContextHandle EffectContextHandle = TargetASC->MakeEffectContext();
	/** Store a source object to know what object caused the effect */
	EffectContextHandle.AddSourceObject(this);
	/** Make an effect spec handle (oftentimes the handle is left out of the variable) */
	const FGameplayEffectSpecHandle EffectSpecHandle = TargetASC->MakeOutgoingSpec(GameplayEffectClass, 1.f, EffectContextHandle);
	/** Apply the gameplay effect to the actor, the gameplay effect is stored in the Data variable in the handle
	 *  Note that Data is a pointer inside the EffectSpecHandle */
	TargetASC->ApplyGameplayEffectSpecToSelf(*EffectSpecHandle.Data.Get());
}
