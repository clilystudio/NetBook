.class public final Lcom/mob/tools/gui/k;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/mob/tools/gui/n;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/n;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/gui/k;->a:Lcom/mob/tools/gui/n;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/k;->a:Lcom/mob/tools/gui/n;

    invoke-virtual {v0}, Lcom/mob/tools/gui/n;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/k;->a:Lcom/mob/tools/gui/n;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/mob/tools/gui/k;->a:Lcom/mob/tools/gui/n;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/n;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/k;->a:Lcom/mob/tools/gui/n;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/n;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/k;->a:Lcom/mob/tools/gui/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/gui/n;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/k;->a:Lcom/mob/tools/gui/n;

    invoke-virtual {v0}, Lcom/mob/tools/gui/n;->getViewTypeCount()I

    move-result v0

    return v0
.end method
