.class final Lcom/ushaqi/zhuishushenqi/ui/home/J;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 1756
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;B)V
    .locals 0

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/J;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;
    .locals 1

    .prologue
    .line 1761
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l()Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1765
    :goto_0
    return-object v0

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1765
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1756
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a()Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1756
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;

    .line 2770
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2771
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2775
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;->ok:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;->message:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    if-nez v0, :cond_2

    .line 2776
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 2777
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 2778
    :cond_1
    :goto_0
    return-void

    .line 2780
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;->message:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;)Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    .line 2781
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/J;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;)V

    goto :goto_0
.end method
