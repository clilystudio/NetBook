.class public final Lcom/alipay/android/phone/mrpc/core/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/android/phone/mrpc/core/D;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/l;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/l;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alipay/android/phone/mrpc/core/D;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/C;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/C;->b:Lcom/alipay/android/phone/mrpc/core/D;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/C;->b:Lcom/alipay/android/phone/mrpc/core/D;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/android/phone/mrpc/core/D;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
