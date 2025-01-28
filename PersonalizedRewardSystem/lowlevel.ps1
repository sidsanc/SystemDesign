@startuml
package "Shopping Reward System - Low Level Design" {
  class RewardService {
    -userProfileService: UserProfileService
    -transactionService: TransactionService
    -ruleEngine: RuleEngine
    -cache: RewardCache
    -notificationService: NotificationService
    
    +calculatePoints(Transaction): Points
    +processTransaction(Transaction): TransactionResult
    +redeemPoints(RedemptionRequest): RedemptionResult
    +getUserBalance(userId: String): PointBalance
    +updateUserTier(userId: String): TierUpdateResult
    +getRewardHistory(userId: String): List<RewardActivity>
    -validateTransaction(Transaction): boolean
    -checkPointsEligibility(RedemptionRequest): boolean
  }

  class UserProfileService {
    -userRepository: UserRepository
    -cache: UserCache
    
    +getUserProfile(userId: String): UserProfile
    +updatePoints(userId: String, points: Double)
    +updateTier(userId: String, tier: TierLevel)
    +getPreferences(userId: String): UserPreferences
    -calculateNextTier(UserProfile): TierLevel
    -validatePointsUpdate(userId: String, points: Double): boolean
  }

  class TransactionService {
    -transactionRepository: TransactionRepository
    -pointCalculator: PointCalculator
    
    +createTransaction(TransactionRequest): Transaction
    +getTransactionHistory(userId: String): List<Transaction>
    +validateTransaction(Transaction): ValidationResult
    +updateTransactionStatus(transactionId: String, status: Status)
    -logTransaction(Transaction)
    -notifyExternalSystems(Transaction)
  }

  class RuleEngine {
    -ruleRepository: RuleRepository
    -tierService: TierService
    -cache: RuleCache
    
    +evaluateRules(Transaction): List<ApplicableRule>
    +calculateBonus(Transaction, UserProfile): BonusPoints
    +determineTier(UserProfile): TierLevel
    +getActivePromotions(): List<Promotion>
    -loadRules(): void
    -validateRuleApplication(Rule, Transaction): boolean
  }

  class PointCalculator {
    -baseMultiplier: Double
    -ruleEngine: RuleEngine
    
    +calculate(Transaction, UserProfile): Points
    +calculateTierBonus(TierLevel): Double
    +calculateCategoryBonus(Category): Double
    -applyRules(Transaction, List<Rule>): Double
  }

  class UserProfile {
    -userId: String
    -currentTier: TierLevel
    -pointBalance: Double
    -rewardHistory: List<RewardActivity>
    -preferences: UserPreferences
    -lastActivity: DateTime
    
    +updatePoints(points: Double): void
    +updateTier(tier: TierLevel): void
    +addRewardActivity(activity: RewardActivity)
    +getPointBalance(): Double
    +getRewardHistory(): List<RewardActivity>
  }

  class Transaction {
    -transactionId: String
    -userId: String
    -amount: Double
    -category: Category
    -timestamp: DateTime
    -pointsEarned: Double
    -status: TransactionStatus
    
    +calculatePoints(): Double
    +updateStatus(status: TransactionStatus)
    +validate(): boolean
    +getTransactionDetails(): TransactionDetails
  }

  enum TierLevel {
    BRONZE
    SILVER
    GOLD
    PLATINUM
  }

  enum TransactionStatus {
    PENDING
    COMPLETED
    FAILED
    REVERSED
  }

  RewardService --> UserProfileService
  RewardService --> TransactionService
  RewardService --> RuleEngine
  TransactionService --> PointCalculator
  RuleEngine --> PointCalculator
  UserProfileService --> UserProfile
  TransactionService --> Transaction
  UserProfile --> TierLevel
  Transaction --> TransactionStatus
}
@enduml