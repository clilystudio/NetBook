.class public final Lcom/alipay/android/phone/mrpc/core/m;
.super Lcom/alipay/android/phone/mrpc/core/A;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/A;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/m;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mrpc/core/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/m;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alipay/android/phone/mrpc/core/b;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/B;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/n;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/mrpc/core/n;-><init>(Lcom/alipay/android/phone/mrpc/core/m;Lcom/alipay/android/phone/mrpc/core/b;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mrpc/core/B;-><init>(Lcom/alipay/android/phone/mrpc/core/l;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/B;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
