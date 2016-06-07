.class public final enum Lcom/qq/e/ads/banner/ADSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/ads/banner/ADSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER:Lcom/qq/e/ads/banner/ADSize;

.field private static final synthetic a:[Lcom/qq/e/ads/banner/ADSize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/qq/e/ads/banner/ADSize;

    const-string v1, "BANNER"

    invoke-direct {v0, v1}, Lcom/qq/e/ads/banner/ADSize;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qq/e/ads/banner/ADSize;->BANNER:Lcom/qq/e/ads/banner/ADSize;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qq/e/ads/banner/ADSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/qq/e/ads/banner/ADSize;->BANNER:Lcom/qq/e/ads/banner/ADSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qq/e/ads/banner/ADSize;->a:[Lcom/qq/e/ads/banner/ADSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/banner/ADSize;
    .locals 1

    const-class v0, Lcom/qq/e/ads/banner/ADSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/banner/ADSize;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/ads/banner/ADSize;
    .locals 1

    sget-object v0, Lcom/qq/e/ads/banner/ADSize;->a:[Lcom/qq/e/ads/banner/ADSize;

    invoke-virtual {v0}, [Lcom/qq/e/ads/banner/ADSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/ads/banner/ADSize;

    return-object v0
.end method
