.class public final Lcom/ushaqi/zhuishushenqi/event/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/squareup/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/squareup/a/b;

    sget-object v1, Lcom/squareup/a/m;->a:Lcom/squareup/a/m;

    invoke-direct {v0, v1}, Lcom/squareup/a/b;-><init>(Lcom/squareup/a/m;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/event/i;->a:Lcom/squareup/a/b;

    return-void
.end method

.method public static a()Lcom/squareup/a/b;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/ushaqi/zhuishushenqi/event/i;->a:Lcom/squareup/a/b;

    return-object v0
.end method
