.class final Lcom/cocosw/bottomsheet/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/cocosw/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/cocosw/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .prologue
    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->a(Lcom/cocosw/bottomsheet/a;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->a(Lcom/cocosw/bottomsheet/a;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/a;->a(Lcom/cocosw/bottomsheet/a;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/a;->a(Lcom/cocosw/bottomsheet/a;)Landroid/widget/GridView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v4

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 347
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :cond_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/f;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->a(Lcom/cocosw/bottomsheet/a;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
