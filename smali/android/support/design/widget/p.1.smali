.class final Landroid/support/design/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 108
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 1111
    if-eq p1, p2, :cond_1

    .line 1113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/t;

    iget-object v1, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const/4 v0, 0x1

    .line 1118
    :goto_0
    return v0

    .line 1116
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/t;

    iget-object v1, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v1, p2, p1}, Landroid/support/design/widget/t;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    const/4 v0, -0x1

    goto :goto_0

    .line 1120
    :cond_1
    const/4 v0, 0x0

    .line 108
    goto :goto_0
.end method
