.class final Lcom/ushaqi/zhuishushenqi/ui/home/j;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultServer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/j;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1067
    .line 2072
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/j;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    .line 2792
    const-string v1, "000000000000000"

    invoke-static {v0}, Landroid/support/design/widget/am;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2793
    const/4 v0, 0x1

    .line 2072
    :goto_0
    if-eqz v0, :cond_1

    .line 2073
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2795
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2075
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/j;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;->getInfoFromJson(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;

    move-result-object v2

    .line 2076
    const-string v1, ""

    .line 2077
    const-string v0, ""

    .line 2078
    if-eqz v2, :cond_2

    .line 2079
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;->getRecommended()Ljava/lang/String;

    move-result-object v1

    .line 2080
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/RecommendInfo;->getOp()Ljava/lang/String;

    move-result-object v0

    .line 2082
    :cond_2
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/j;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v2}, Landroid/support/design/widget/am;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2083
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/j;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultServer;

    move-result-object v0

    goto :goto_1
.end method
