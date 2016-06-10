.class public interface abstract Lcom/squareup/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/squareup/a/m;

.field public static final b:Lcom/squareup/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/squareup/a/n;

    invoke-direct {v0}, Lcom/squareup/a/n;-><init>()V

    sput-object v0, Lcom/squareup/a/m;->a:Lcom/squareup/a/m;

    .line 44
    new-instance v0, Lcom/squareup/a/o;

    invoke-direct {v0}, Lcom/squareup/a/o;-><init>()V

    sput-object v0, Lcom/squareup/a/m;->b:Lcom/squareup/a/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/a/b;)V
.end method
