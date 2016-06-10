.class final Lcom/mob/tools/gui/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mob/tools/gui/PullToRefreshView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/q;->a:Lcom/mob/tools/gui/PullToRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/q;->a:Lcom/mob/tools/gui/PullToRefreshView;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshView;->a(Lcom/mob/tools/gui/PullToRefreshView;)V

    iget-object v0, p0, Lcom/mob/tools/gui/q;->a:Lcom/mob/tools/gui/PullToRefreshView;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshView;->b(Lcom/mob/tools/gui/PullToRefreshView;)V

    return-void
.end method
