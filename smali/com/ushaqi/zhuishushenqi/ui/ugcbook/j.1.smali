.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 129
    return-void
.end method
