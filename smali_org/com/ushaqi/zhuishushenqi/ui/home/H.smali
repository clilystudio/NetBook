.class final Lcom/ushaqi/zhuishushenqi/ui/home/H;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/AdsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/H;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;B)V
    .locals 0

    .prologue
    .line 1727
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/AdsResult;
    .locals 2

    .prologue
    .line 1732
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->J(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AdsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1736
    :goto_0
    return-object v0

    .line 1733
    :catch_0
    move-exception v0

    .line 1734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1736
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1727
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/H;->a()Lcom/ushaqi/zhuishushenqi/model/AdsResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1727
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/AdsResult;

    .line 2741
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2742
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/H;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/AdsResult;->isOk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2743
    :cond_0
    :goto_0
    return-void

    .line 2745
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/AdsResult;->getAdverts()[Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    move-result-object v0

    .line 2746
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/c;->a([Lcom/ushaqi/zhuishushenqi/model/AdvertData;)Z

    move-result v0

    .line 2747
    if-eqz v0, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/H;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    goto :goto_0
.end method
