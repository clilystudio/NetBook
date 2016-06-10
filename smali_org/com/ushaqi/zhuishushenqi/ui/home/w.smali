.class final Lcom/ushaqi/zhuishushenqi/ui/home/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V
    .locals 0

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->a:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->a:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iget-boolean v0, v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->login:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1883
    :goto_0
    return-void

    .line 1878
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->startActivity(Landroid/content/Intent;)V

    .line 1879
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->c:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/w;->b:Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 2849
    const-string v2, "shelf_msg_click"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
