.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 336
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 339
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_0
    return-void
.end method
