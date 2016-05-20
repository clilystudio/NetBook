.class final enum Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOADED:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

.field public static final enum NONE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

.field public static final enum PAUSE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

.field public static final enum PENDING:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

.field public static final enum PREPARE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

.field public static final enum PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

.field private static final synthetic a:[Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->NONE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 77
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PREPARE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 78
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 79
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PAUSE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 80
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v7}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PENDING:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 81
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    const-string v1, "DOWNLOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->DOWNLOADED:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->NONE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PREPARE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PAUSE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PENDING:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->DOWNLOADED:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->a:[Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->a:[Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    return-object v0
.end method
