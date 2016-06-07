.class public Lcom/mob/tools/gui/ScrollableGridView;
.super Landroid/widget/GridView;

# interfaces
.implements Lcom/koushikdutta/async/s;


# instance fields
.field private a:Lcom/mob/tools/gui/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/ScrollableGridView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/ScrollableGridView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/mob/tools/gui/ScrollableGridView;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScrollableGridView;->setCacheColorHint(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScrollableGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/mob/tools/gui/s;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/s;-><init>(Lcom/mob/tools/gui/ScrollableGridView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/ScrollableGridView;->a:Lcom/mob/tools/gui/r;

    return-void
.end method


# virtual methods
.method protected computeVerticalScrollOffset()I
    .locals 3

    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/ScrollableGridView;->a:Lcom/mob/tools/gui/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/tools/gui/ScrollableGridView;->a:Lcom/mob/tools/gui/r;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/mob/tools/gui/r;->a(II)V

    :cond_0
    return v0
.end method
