.class final Landroid/support/v7/widget/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/P;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/P;)V
    .locals 0

    .prologue
    .line 1476
    iput-object p1, p0, Landroid/support/v7/widget/Q;->a:Landroid/support/v7/widget/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/P;B)V
    .locals 0

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Q;-><init>(Landroid/support/v7/widget/P;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/support/v7/widget/Q;->a:Landroid/support/v7/widget/P;

    invoke-static {v0}, Landroid/support/v7/widget/P;->a(Landroid/support/v7/widget/P;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1480
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1481
    return-void
.end method
