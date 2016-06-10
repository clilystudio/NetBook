.class final Lcom/ushaqi/zhuishushenqi/reader/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ap;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 988
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1005
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 990
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ap;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0

    .line 993
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ap;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ap;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 994
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ap;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 997
    :pswitch_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cb;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ap;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/aq;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/aq;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ap;)V

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/cb;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V

    .line 1002
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c042b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
