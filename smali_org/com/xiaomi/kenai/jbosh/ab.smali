.class public final Lcom/xiaomi/kenai/jbosh/ab;
.super Ljava/util/EventObject;


# instance fields
.field private final a:Lcom/xiaomi/kenai/jbosh/p;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/xiaomi/kenai/jbosh/p;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/xiaomi/kenai/jbosh/ab;->a:Lcom/xiaomi/kenai/jbosh/p;

    return-void
.end method

.method static a(Lcom/xiaomi/kenai/jbosh/F;Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/ab;
    .locals 1

    new-instance v0, Lcom/xiaomi/kenai/jbosh/ab;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/kenai/jbosh/ab;-><init>(Ljava/lang/Object;Lcom/xiaomi/kenai/jbosh/p;)V

    return-object v0
.end method

.method static b(Lcom/xiaomi/kenai/jbosh/F;Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/ab;
    .locals 1

    new-instance v0, Lcom/xiaomi/kenai/jbosh/ab;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/kenai/jbosh/ab;-><init>(Ljava/lang/Object;Lcom/xiaomi/kenai/jbosh/p;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/xiaomi/kenai/jbosh/p;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ab;->a:Lcom/xiaomi/kenai/jbosh/p;

    return-object v0
.end method
