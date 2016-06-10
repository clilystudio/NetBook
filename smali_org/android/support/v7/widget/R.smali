.class final Landroid/support/v7/widget/R;
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
    .line 1484
    iput-object p1, p0, Landroid/support/v7/widget/R;->a:Landroid/support/v7/widget/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/P;B)V
    .locals 0

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Landroid/support/v7/widget/R;-><init>(Landroid/support/v7/widget/P;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Landroid/support/v7/widget/R;->a:Landroid/support/v7/widget/P;

    invoke-static {v0}, Landroid/support/v7/widget/P;->b(Landroid/support/v7/widget/P;)V

    .line 1488
    return-void
.end method
