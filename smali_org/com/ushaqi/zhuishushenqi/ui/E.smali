.class final Lcom/ushaqi/zhuishushenqi/ui/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/m;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return v3

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z

    .line 319
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(Z)V

    .line 320
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)I

    .line 322
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(IZ)V

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z

    .line 331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(Z)V

    .line 332
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)I

    .line 334
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/E;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(IZ)V

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c04a9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
