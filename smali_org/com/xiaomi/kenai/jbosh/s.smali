.class final Lcom/xiaomi/kenai/jbosh/s;
.super Lcom/xiaomi/kenai/jbosh/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/kenai/jbosh/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/kenai/jbosh/a;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/s;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/kenai/jbosh/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/kenai/jbosh/s;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
