.class final Lcom/ushaqi/zhuishushenqi/ui/bc;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bc;->a:Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bc;->a:Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bc;->a:Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bc;->a:Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bc;->a:Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/IntroActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 193
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
