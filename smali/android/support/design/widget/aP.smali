.class final Landroid/support/design/widget/aP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/support/design/widget/az;

.field private static final b:Landroid/support/design/widget/aQ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Landroid/support/design/widget/az;

    invoke-direct {v0}, Landroid/support/design/widget/az;-><init>()V

    sput-object v0, Landroid/support/design/widget/aP;->a:Landroid/support/design/widget/az;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/support/design/widget/aS;

    invoke-direct {v0, v2}, Landroid/support/design/widget/aS;-><init>(B)V

    sput-object v0, Landroid/support/design/widget/aP;->b:Landroid/support/design/widget/aQ;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/support/design/widget/aR;

    invoke-direct {v0, v2}, Landroid/support/design/widget/aR;-><init>(B)V

    sput-object v0, Landroid/support/design/widget/aP;->b:Landroid/support/design/widget/aQ;

    goto :goto_0
.end method

.method static a()Landroid/support/design/widget/au;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/support/design/widget/aP;->a:Landroid/support/design/widget/az;

    invoke-virtual {v0}, Landroid/support/design/widget/az;->a()Landroid/support/design/widget/au;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/support/design/widget/aP;->b:Landroid/support/design/widget/aQ;

    invoke-interface {v0, p0}, Landroid/support/design/widget/aQ;->a(Landroid/view/View;)V

    .line 65
    return-void
.end method
