.class public final Lcom/alipay/b/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/b/a/e;->a:Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->success:Z

    iput-boolean v0, p0, Lcom/alipay/b/a/e;->a:Z

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->appListData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/b/a/e;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;->appListVer:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/b/a/e;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/b/a/e;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/b/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/b/a/e;->c:Ljava/lang/String;

    return-object v0
.end method
