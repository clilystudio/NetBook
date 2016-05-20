.class final Lcom/ushaqi/zhuishushenqi/reader/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 142
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u65e0\u9884\u8bfb\u7ae0\u8282"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/C;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/C;->a(Ljava/util/Collection;)V

    .line 154
    :cond_1
    return-void

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/l;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
