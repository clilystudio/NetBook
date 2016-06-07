.class public abstract Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 75
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->e:[Landroid/view/View;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 71
    if-eq p1, v3, :cond_2

    .line 72
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract b()V
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    const v0, 0x7f030045

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    const v0, 0x7f0c0029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a:Landroid/view/ViewGroup;

    .line 29
    const v0, 0x7f0c00ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->b:Landroid/view/View;

    .line 30
    const v0, 0x7f0c00ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->c:Landroid/view/View;

    .line 31
    const v0, 0x7f0c00f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->d:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a()I

    move-result v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->a:Landroid/view/ViewGroup;

    aput-object v2, v0, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->b:Landroid/view/View;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->c:Landroid/view/View;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->d:Landroid/view/View;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->e:[Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->c:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ad;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ad;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-object v1
.end method
