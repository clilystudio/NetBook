.class final Luk/me/lewisdeane/ldialogs/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Luk/me/lewisdeane/ldialogs/e;


# direct methods
.method constructor <init>(Luk/me/lewisdeane/ldialogs/e;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/e;->a(Luk/me/lewisdeane/ldialogs/e;)Luk/me/lewisdeane/ldialogs/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/e;->b(Luk/me/lewisdeane/ldialogs/e;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Luk/me/lewisdeane/ldialogs/g;

    invoke-static {v1, v0}, Luk/me/lewisdeane/ldialogs/e;->a(Luk/me/lewisdeane/ldialogs/e;Luk/me/lewisdeane/ldialogs/g;)Luk/me/lewisdeane/ldialogs/g;

    .line 107
    :cond_0
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/e;->a(Luk/me/lewisdeane/ldialogs/e;)Luk/me/lewisdeane/ldialogs/g;

    move-result-object v0

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-static {v1}, Luk/me/lewisdeane/ldialogs/e;->c(Luk/me/lewisdeane/ldialogs/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-interface {v0, p3}, Luk/me/lewisdeane/ldialogs/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/e;->dismiss()V

    .line 112
    return-void

    .line 109
    :catch_0
    move-exception v0

    const-string v0, "L Dialogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luk/me/lewisdeane/ldialogs/f;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-static {v2}, Luk/me/lewisdeane/ldialogs/e;->b(Luk/me/lewisdeane/ldialogs/e;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should implement ListClickListener or use CustomListDialog.setListClickListener(...)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
