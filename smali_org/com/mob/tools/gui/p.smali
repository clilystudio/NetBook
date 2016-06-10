.class final Lcom/mob/tools/gui/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:I

.field private synthetic c:Lcom/mob/tools/gui/o;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iput p2, p0, Lcom/mob/tools/gui/p;->a:I

    iput p3, p0, Lcom/mob/tools/gui/p;->b:I

    iget-object v0, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    iget-object v1, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    # getter for: Lcom/mob/tools/gui/o;->listView:Lcom/mob/tools/gui/ScrollableListView;
    invoke-static {v1}, Lcom/mob/tools/gui/o;->access$300(Lcom/mob/tools/gui/o;)Lcom/mob/tools/gui/ScrollableListView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/mob/tools/gui/o;->onScroll$1768784b(Lcom/koushikdutta/async/s;III)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-object v1, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/mob/tools/gui/o;->fling:Z
    invoke-static {v1, v0}, Lcom/mob/tools/gui/o;->access$002(Lcom/mob/tools/gui/o;Z)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    # getter for: Lcom/mob/tools/gui/o;->osListener$2f4f5416:Landroid/support/design/widget/K;
    invoke-static {v0}, Lcom/mob/tools/gui/o;->access$100$fc16149(Lcom/mob/tools/gui/o;)Landroid/support/design/widget/K;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    # getter for: Lcom/mob/tools/gui/o;->osListener$2f4f5416:Landroid/support/design/widget/K;
    invoke-static {v0}, Lcom/mob/tools/gui/o;->access$100$fc16149(Lcom/mob/tools/gui/o;)Landroid/support/design/widget/K;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    # getter for: Lcom/mob/tools/gui/o;->adapter:Lcom/mob/tools/gui/k;
    invoke-static {v0}, Lcom/mob/tools/gui/o;->access$200(Lcom/mob/tools/gui/o;)Lcom/mob/tools/gui/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/p;->c:Lcom/mob/tools/gui/o;

    # getter for: Lcom/mob/tools/gui/o;->adapter:Lcom/mob/tools/gui/k;
    invoke-static {v0}, Lcom/mob/tools/gui/o;->access$200(Lcom/mob/tools/gui/o;)Lcom/mob/tools/gui/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/gui/k;->notifyDataSetChanged()V

    goto :goto_1
.end method
