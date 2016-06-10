.class final Lorg/litepal/b/e;
.super Lorg/litepal/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/litepal/b/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/litepal/b/d;

.field private final synthetic b:Landroid/support/design/widget/K;


# direct methods
.method constructor <init>(Lorg/litepal/b/d;Landroid/support/design/widget/K;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/litepal/b/e;->a:Lorg/litepal/b/d;

    iput-object p2, p0, Lorg/litepal/b/e;->b:Landroid/support/design/widget/K;

    .line 1058
    invoke-direct {p0, p1}, Lorg/litepal/b/f;-><init>(Lorg/litepal/b/d;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    .line 3062
    iget-object v0, p0, Lorg/litepal/b/e;->a:Lorg/litepal/b/d;

    invoke-virtual {v0}, Lorg/litepal/b/d;->save()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2067
    iget-object v0, p0, Lorg/litepal/b/e;->b:Landroid/support/design/widget/K;

    if-eqz v0, :cond_0

    .line 2070
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1
    :cond_0
    return-void
.end method
