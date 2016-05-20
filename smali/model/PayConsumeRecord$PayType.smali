.class public final enum Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

.field public static final enum AUTO_PURCHASE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

.field public static final enum MULTIPLE_CHAPTERS:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

.field public static final enum SINGLE_CHAPTER:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

.field public static final enum VIP_SERVICE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

.field public static final enum WHOLE_BOOK:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    const-string v1, "SINGLE_CHAPTER"

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->SINGLE_CHAPTER:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    const-string v1, "AUTO_PURCHASE"

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->AUTO_PURCHASE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    const-string v1, "WHOLE_BOOK"

    invoke-direct {v0, v1, v4}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->WHOLE_BOOK:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    const-string v1, "MULTIPLE_CHAPTERS"

    invoke-direct {v0, v1, v5}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->MULTIPLE_CHAPTERS:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    const-string v1, "VIP_SERVICE"

    invoke-direct {v0, v1, v6}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->VIP_SERVICE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->SINGLE_CHAPTER:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->AUTO_PURCHASE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->WHOLE_BOOK:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->MULTIPLE_CHAPTERS:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->VIP_SERVICE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->$VALUES:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->$VALUES:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    return-object v0
.end method
