.class public Lcom/mob/tools/gui/ScrollableListView;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/koushikdutta/async/s;


# instance fields
.field private a:Lcom/mob/tools/gui/r;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/ScrollableListView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/ScrollableListView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/mob/tools/gui/ScrollableListView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/ScrollableListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mob/tools/gui/ScrollableListView;->b:Z

    return p1
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setCacheColorHint(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScrollableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/ScrollableListView;->setDividerHeight(I)V

    new-instance v0, Lcom/mob/tools/gui/t;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/t;-><init>(Lcom/mob/tools/gui/ScrollableListView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/ScrollableListView;->a:Lcom/mob/tools/gui/r;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mob/tools/gui/ScrollableListView;->b:Z

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/ScrollableListView;->a:Lcom/mob/tools/gui/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/tools/gui/ScrollableListView;->a:Lcom/mob/tools/gui/r;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/mob/tools/gui/r;->a(II)V

    :cond_0
    return v0
.end method
