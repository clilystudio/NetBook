.class final Landroid/support/v7/widget/T;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/L;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/L;)V
    .locals 0

    .prologue
    .line 1703
    iput-object p1, p0, Landroid/support/v7/widget/T;->a:Landroid/support/v7/widget/L;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/L;B)V
    .locals 0

    .prologue
    .line 1703
    invoke-direct {p0, p1}, Landroid/support/v7/widget/T;-><init>(Landroid/support/v7/widget/L;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/support/v7/widget/T;->a:Landroid/support/v7/widget/L;

    invoke-virtual {v0}, Landroid/support/v7/widget/L;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Landroid/support/v7/widget/T;->a:Landroid/support/v7/widget/L;

    invoke-virtual {v0}, Landroid/support/v7/widget/L;->c()V

    .line 1710
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Landroid/support/v7/widget/T;->a:Landroid/support/v7/widget/L;

    invoke-virtual {v0}, Landroid/support/v7/widget/L;->a()V

    .line 1715
    return-void
.end method
