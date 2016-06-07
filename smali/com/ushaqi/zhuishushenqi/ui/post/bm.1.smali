.class final Lcom/ushaqi/zhuishushenqi/ui/post/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;I)I

    .line 322
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bs;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    const v3, 0x7f0501d8

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bs;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Landroid/app/Activity;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    .line 324
    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bs;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :cond_0
    return-void
.end method
