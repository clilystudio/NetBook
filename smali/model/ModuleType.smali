.class public final enum Lcom/ushaqi/zhuishushenqi/model/ModuleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ModuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ushaqi/zhuishushenqi/model/ModuleType;

.field public static final enum ACTIVITY:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

.field public static final enum AOYOU:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

.field public static final enum GAME_GROUP:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

.field public static final enum LOCAL:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

.field public static final enum UNKNOWN:Lcom/ushaqi/zhuishushenqi/model/ModuleType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    const-string v1, "GAME_GROUP"

    const-string v2, "gameGroup"

    invoke-direct {v0, v1, v3, v2}, Lcom/ushaqi/zhuishushenqi/model/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->GAME_GROUP:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    const-string v1, "ACTIVITY"

    const-string v2, "activity"

    invoke-direct {v0, v1, v4, v2}, Lcom/ushaqi/zhuishushenqi/model/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->ACTIVITY:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    const-string v1, "UNKNOWN"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/ushaqi/zhuishushenqi/model/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->UNKNOWN:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    const-string v1, "AOYOU"

    const-string v2, "aoyou"

    invoke-direct {v0, v1, v6, v2}, Lcom/ushaqi/zhuishushenqi/model/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->AOYOU:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    const-string v1, "LOCAL"

    const-string v2, "local"

    invoke-direct {v0, v1, v7, v2}, Lcom/ushaqi/zhuishushenqi/model/ModuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->LOCAL:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->GAME_GROUP:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->ACTIVITY:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->UNKNOWN:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->AOYOU:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->LOCAL:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->$VALUES:[Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->name:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ModuleType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/model/ModuleType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->$VALUES:[Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/model/ModuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->name:Ljava/lang/String;

    return-object v0
.end method
