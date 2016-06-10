.class public abstract Landroid/support/v7/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/ay;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/ai;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5063
    new-instance v0, Landroid/support/v7/widget/ai;

    invoke-direct {v0}, Landroid/support/v7/widget/ai;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/ai;

    .line 5064
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ah;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 5155
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final a(Landroid/support/v7/widget/aj;)V
    .locals 1

    .prologue
    .line 5313
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->registerObserver(Ljava/lang/Object;)V

    .line 5314
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ay;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 5380
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->a()V

    .line 5381
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 5429
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/ai;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ai;->a(II)V

    .line 5430
    return-void
.end method

.method public final b(Landroid/support/v7/widget/aj;)V
    .locals 1

    .prologue
    .line 5327
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->unregisterObserver(Ljava/lang/Object;)V

    .line 5328
    return-void
.end method

.method public final b(Landroid/support/v7/widget/ay;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5130
    iput p2, p1, Landroid/support/v7/widget/ay;->b:I

    .line 5134
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/ay;->a(II)V

    .line 5137
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ay;I)V

    .line 5139
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 5140
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 5480
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/ai;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ai;->b(II)V

    .line 5481
    return-void
.end method
