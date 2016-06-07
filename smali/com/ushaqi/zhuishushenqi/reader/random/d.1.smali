.class final Lcom/ushaqi/zhuishushenqi/reader/random/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Z)Z

    .line 213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6dfb\u52a0\u5230\u4e66\u67b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020271

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Z)Z

    .line 219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020272

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5df2\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/d;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "random_rader_add_shelf"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
