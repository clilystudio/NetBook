.class final Landroid/support/v7/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/D;

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/t;

    iget-object v1, v5, Landroid/support/v7/widget/D;->a:Landroid/support/v7/widget/ay;

    iget v2, v5, Landroid/support/v7/widget/D;->b:I

    iget v3, v5, Landroid/support/v7/widget/D;->c:I

    iget v4, v5, Landroid/support/v7/widget/D;->d:I

    iget v5, v5, Landroid/support/v7/widget/D;->e:I

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/t;->a(Landroid/support/v7/widget/t;Landroid/support/v7/widget/ay;IIII)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->a(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
