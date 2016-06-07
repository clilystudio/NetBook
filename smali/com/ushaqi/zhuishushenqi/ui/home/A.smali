.class final Lcom/ushaqi/zhuishushenqi/ui/home/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/A;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/A;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/A;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->e()Ljava/util/List;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/A;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4f60\u6ca1\u6709\u9009\u62e9\u8981\u5220\u9664\u7684\u4e66\u54e6"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/A;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;)V

    goto :goto_0
.end method
