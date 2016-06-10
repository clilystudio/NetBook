.class final Lcom/ushaqi/zhuishushenqi/ui/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/A;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/A;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/B;->a:Lcom/ushaqi/zhuishushenqi/ui/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/B;->a:Lcom/ushaqi/zhuishushenqi/ui/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/A;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/B;->a:Lcom/ushaqi/zhuishushenqi/ui/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/A;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/B;->a:Lcom/ushaqi/zhuishushenqi/ui/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/A;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/B;->a:Lcom/ushaqi/zhuishushenqi/ui/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/A;->a:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 166
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/B;->a:Lcom/ushaqi/zhuishushenqi/ui/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/A;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z

    goto :goto_0
.end method
