.class final Lcom/alipay/b/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/b/c/b;


# direct methods
.method constructor <init>(Lcom/alipay/b/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/b/c/c;->a:Lcom/alipay/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/b/c/c;->a:Lcom/alipay/b/c/b;

    invoke-static {v0}, Lcom/alipay/b/c/b;->a(Lcom/alipay/b/c/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
