.class public final Lcom/ushaqi/zhuishushenqi/pay/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/a/b;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/pay/a/b;-><init>(Lcom/ushaqi/zhuishushenqi/pay/a/a;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/a;->b:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/a;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V
    .locals 3

    .prologue
    .line 47
    new-instance v1, Lcom/ushaqi/zhuishushenqi/pay/a/c;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/pay/a/c;-><init>(Lcom/ushaqi/zhuishushenqi/pay/a/a;Landroid/app/Activity;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/pay/a/c;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method
