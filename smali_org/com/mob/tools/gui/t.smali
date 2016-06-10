.class final Lcom/mob/tools/gui/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/gui/r;


# instance fields
.field private synthetic a:Lcom/mob/tools/gui/ScrollableListView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/ScrollableListView;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/t;->a:Lcom/mob/tools/gui/ScrollableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object v1, p0, Lcom/mob/tools/gui/t;->a:Lcom/mob/tools/gui/ScrollableListView;

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/mob/tools/gui/ScrollableListView;->a(Lcom/mob/tools/gui/ScrollableListView;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
