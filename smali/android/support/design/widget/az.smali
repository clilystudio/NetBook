.class Landroid/support/design/widget/az;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/design/widget/au;
    .locals 3

    .prologue
    .line 1028
    new-instance v1, Landroid/support/design/widget/au;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/design/widget/aF;

    invoke-direct {v0}, Landroid/support/design/widget/aF;-><init>()V

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/design/widget/au;-><init>(Landroid/support/design/widget/aA;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/support/design/widget/aD;

    invoke-direct {v0}, Landroid/support/design/widget/aD;-><init>()V

    goto :goto_0
.end method
