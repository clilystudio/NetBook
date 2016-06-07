.class public abstract Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 78
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->f:[Landroid/view/View;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 74
    if-eq p1, v3, :cond_2

    .line 75
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .prologue
    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    return-void
.end method

.method protected abstract b()V
.end method

.method public f()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 24
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1418
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 26
    :cond_0
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a:Landroid/view/ViewGroup;

    .line 29
    const v0, 0x7f0c00ee

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->b:Landroid/view/View;

    .line 30
    const v0, 0x7f0c00ef

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->c:Landroid/view/View;

    .line 31
    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->e:Landroid/view/View;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->a:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->b:Landroid/view/View;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->c:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->e:Landroid/view/View;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->f:[Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ac;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ac;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
