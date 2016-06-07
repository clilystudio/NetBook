.class public interface abstract Lcom/github/kevinsawicki/http/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/github/kevinsawicki/http/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/github/kevinsawicki/http/d;

    invoke-direct {v0}, Lcom/github/kevinsawicki/http/d;-><init>()V

    sput-object v0, Lcom/github/kevinsawicki/http/c;->a:Lcom/github/kevinsawicki/http/c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method
