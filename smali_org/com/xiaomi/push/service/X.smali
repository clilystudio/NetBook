.class public final Lcom/xiaomi/push/service/X;
.super Ljava/lang/Object;


# static fields
.field private static e:I


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12c

    sput v0, Lcom/xiaomi/push/service/X;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/X;->d:I

    iput-object p1, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaomi/push/service/X;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/X;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/X;->c:J

    iget-object v0, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/X;->d:I

    return-void
.end method

.method public final a(Z)V
    .locals 8

    .prologue
    const/16 v0, 0x28

    const/16 v1, 0x14

    const/16 v2, 0xa

    const/4 v4, 0x1

    .line 0
    iget-object v3, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/c;

    iget-object v2, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/xiaomi/push/service/c;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/e;)V

    iget v0, p0, Lcom/xiaomi/push/service/X;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/X;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/XMPushService;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1000
    iget v3, p0, Lcom/xiaomi/push/service/X;->d:I

    const/16 v4, 0xd

    if-le v3, v4, :cond_2

    const/16 v0, 0x12c

    .line 0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "schedule reconnect in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/c;

    iget-object v3, p0, Lcom/xiaomi/push/service/X;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/c;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/e;J)V

    iget v0, p0, Lcom/xiaomi/push/service/X;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/X;->d:I

    goto :goto_0

    .line 1000
    :cond_2
    iget v3, p0, Lcom/xiaomi/push/service/X;->d:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_3

    const/16 v0, 0x3c

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/xiaomi/push/service/X;->d:I

    if-lez v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lcom/xiaomi/push/service/X;->c:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaomi/push/service/X;->c:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    sget v1, Lcom/xiaomi/push/service/X;->e:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    iget v1, p0, Lcom/xiaomi/push/service/X;->b:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/xiaomi/push/service/X;->b:I

    goto :goto_1

    :cond_7
    const-wide/32 v6, 0xdbba0

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    iget v1, p0, Lcom/xiaomi/push/service/X;->b:I

    if-ge v1, v0, :cond_8

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    :cond_8
    iput v0, p0, Lcom/xiaomi/push/service/X;->b:I

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    goto :goto_1

    :cond_9
    const-wide/32 v6, 0x1b7740

    cmp-long v0, v4, v6

    if-gez v0, :cond_b

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    :goto_2
    iput v0, p0, Lcom/xiaomi/push/service/X;->b:I

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    iput v2, p0, Lcom/xiaomi/push/service/X;->b:I

    iget v0, p0, Lcom/xiaomi/push/service/X;->b:I

    goto/16 :goto_1

    .line 0
    :cond_c
    const-string v0, "should not reconnect as no client or network."

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
