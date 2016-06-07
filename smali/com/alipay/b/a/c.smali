.class final Lcom/alipay/b/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/alipay/b/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/b/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/b/a/c;->d:Lcom/alipay/b/a/a;

    iput-object p2, p0, Lcom/alipay/b/a/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/b/a/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/b/a/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/b/a/c;->d:Lcom/alipay/b/a/a;

    iget-object v1, p0, Lcom/alipay/b/a/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/b/a/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/b/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/b/a/a;->a(Lcom/alipay/b/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
