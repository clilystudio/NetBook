.class final Lcom/mob/tools/gui/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/a/q;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Z

.field private synthetic c:Lcom/mob/tools/gui/c;

.field private synthetic d:Lcom/mob/tools/gui/g;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/g;Ljava/io/File;ZLcom/mob/tools/gui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/h;->d:Lcom/mob/tools/gui/g;

    iput-object p2, p0, Lcom/mob/tools/gui/h;->a:Ljava/io/File;

    iput-boolean p3, p0, Lcom/mob/tools/gui/h;->b:Z

    iput-object p4, p0, Lcom/mob/tools/gui/h;->c:Lcom/mob/tools/gui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/mob/tools/gui/f;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/f;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/h;->d:Lcom/mob/tools/gui/g;

    invoke-static {v0, v4}, Lcom/mob/tools/gui/g;->a(Lcom/mob/tools/gui/g;Lcom/mob/tools/gui/c;)Lcom/mob/tools/gui/c;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mob/tools/gui/h;->d:Lcom/mob/tools/gui/g;

    iget-object v2, p0, Lcom/mob/tools/gui/h;->a:Ljava/io/File;

    iget-boolean v3, p0, Lcom/mob/tools/gui/h;->b:Z

    invoke-static {v1, v0, v2, v3}, Lcom/mob/tools/gui/g;->a(Lcom/mob/tools/gui/g;Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mob/tools/gui/h;->d:Lcom/mob/tools/gui/g;

    invoke-static {v1}, Lcom/mob/tools/gui/g;->c(Lcom/mob/tools/gui/g;)Lcom/mob/tools/gui/a;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/gui/a;->c(Lcom/mob/tools/gui/a;)Lcom/mob/tools/gui/i;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/h;->c:Lcom/mob/tools/gui/c;

    invoke-static {v2}, Lcom/mob/tools/gui/c;->a(Lcom/mob/tools/gui/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/gui/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mob/tools/gui/h;->c:Lcom/mob/tools/gui/c;

    invoke-static {v1, v0}, Lcom/mob/tools/gui/c;->a(Lcom/mob/tools/gui/c;Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/h;->d:Lcom/mob/tools/gui/g;

    invoke-static {v0, v4}, Lcom/mob/tools/gui/g;->a(Lcom/mob/tools/gui/g;Lcom/mob/tools/gui/c;)Lcom/mob/tools/gui/c;

    goto :goto_0
.end method
