package com.squareup.okhttp;

public enum CipherSuite
{
  final String javaName;

  static
  {
    TLS_RSA_EXPORT_WITH_RC4_40_MD5 = new CipherSuite("TLS_RSA_EXPORT_WITH_RC4_40_MD5", 2, "SSL_RSA_EXPORT_WITH_RC4_40_MD5");
    TLS_RSA_WITH_RC4_128_MD5 = new CipherSuite("TLS_RSA_WITH_RC4_128_MD5", 3, "SSL_RSA_WITH_RC4_128_MD5");
    TLS_RSA_WITH_RC4_128_SHA = new CipherSuite("TLS_RSA_WITH_RC4_128_SHA", 4, "SSL_RSA_WITH_RC4_128_SHA");
    TLS_RSA_EXPORT_WITH_DES40_CBC_SHA = new CipherSuite("TLS_RSA_EXPORT_WITH_DES40_CBC_SHA", 5, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
    TLS_RSA_WITH_DES_CBC_SHA = new CipherSuite("TLS_RSA_WITH_DES_CBC_SHA", 6, "SSL_RSA_WITH_DES_CBC_SHA");
    TLS_RSA_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_RSA_WITH_3DES_EDE_CBC_SHA", 7, "SSL_RSA_WITH_3DES_EDE_CBC_SHA");
    TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA = new CipherSuite("TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 8, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
    TLS_DHE_DSS_WITH_DES_CBC_SHA = new CipherSuite("TLS_DHE_DSS_WITH_DES_CBC_SHA", 9, "SSL_DHE_DSS_WITH_DES_CBC_SHA");
    TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 10, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
    TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA = new CipherSuite("TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 11, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
    TLS_DHE_RSA_WITH_DES_CBC_SHA = new CipherSuite("TLS_DHE_RSA_WITH_DES_CBC_SHA", 12, "SSL_DHE_RSA_WITH_DES_CBC_SHA");
    TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 13, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
    TLS_DH_anon_EXPORT_WITH_RC4_40_MD5 = new CipherSuite("TLS_DH_anon_EXPORT_WITH_RC4_40_MD5", 14, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
    TLS_DH_anon_WITH_RC4_128_MD5 = new CipherSuite("TLS_DH_anon_WITH_RC4_128_MD5", 15, "SSL_DH_anon_WITH_RC4_128_MD5");
    TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA = new CipherSuite("TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 16, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
    TLS_DH_anon_WITH_DES_CBC_SHA = new CipherSuite("TLS_DH_anon_WITH_DES_CBC_SHA", 17, "SSL_DH_anon_WITH_DES_CBC_SHA");
    TLS_DH_anon_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_DH_anon_WITH_3DES_EDE_CBC_SHA", 18, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
    TLS_KRB5_WITH_DES_CBC_SHA = new CipherSuite("TLS_KRB5_WITH_DES_CBC_SHA", 19, "TLS_KRB5_WITH_DES_CBC_SHA");
    TLS_KRB5_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 20, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
    TLS_KRB5_WITH_RC4_128_SHA = new CipherSuite("TLS_KRB5_WITH_RC4_128_SHA", 21, "TLS_KRB5_WITH_RC4_128_SHA");
    TLS_KRB5_WITH_DES_CBC_MD5 = new CipherSuite("TLS_KRB5_WITH_DES_CBC_MD5", 22, "TLS_KRB5_WITH_DES_CBC_MD5");
    TLS_KRB5_WITH_3DES_EDE_CBC_MD5 = new CipherSuite("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 23, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
    TLS_KRB5_WITH_RC4_128_MD5 = new CipherSuite("TLS_KRB5_WITH_RC4_128_MD5", 24, "TLS_KRB5_WITH_RC4_128_MD5");
    TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA = new CipherSuite("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 25, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
    TLS_KRB5_EXPORT_WITH_RC4_40_SHA = new CipherSuite("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 26, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
    TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5 = new CipherSuite("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 27, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
    TLS_KRB5_EXPORT_WITH_RC4_40_MD5 = new CipherSuite("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 28, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
    TLS_RSA_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_RSA_WITH_AES_128_CBC_SHA", 29, "TLS_RSA_WITH_AES_128_CBC_SHA");
    TLS_DHE_DSS_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 30, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
    TLS_DHE_RSA_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 31, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
    TLS_DH_anon_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_DH_anon_WITH_AES_128_CBC_SHA", 32, "TLS_DH_anon_WITH_AES_128_CBC_SHA");
    TLS_RSA_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_RSA_WITH_AES_256_CBC_SHA", 33, "TLS_RSA_WITH_AES_256_CBC_SHA");
    TLS_DHE_DSS_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 34, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
    TLS_DHE_RSA_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 35, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
    TLS_DH_anon_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_DH_anon_WITH_AES_256_CBC_SHA", 36, "TLS_DH_anon_WITH_AES_256_CBC_SHA");
    TLS_RSA_WITH_NULL_SHA256 = new CipherSuite("TLS_RSA_WITH_NULL_SHA256", 37, "TLS_RSA_WITH_NULL_SHA256");
    TLS_RSA_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_RSA_WITH_AES_128_CBC_SHA256", 38, "TLS_RSA_WITH_AES_128_CBC_SHA256");
    TLS_RSA_WITH_AES_256_CBC_SHA256 = new CipherSuite("TLS_RSA_WITH_AES_256_CBC_SHA256", 39, "TLS_RSA_WITH_AES_256_CBC_SHA256");
    TLS_DHE_DSS_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 40, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
    TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 41, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
    TLS_DHE_DSS_WITH_AES_256_CBC_SHA256 = new CipherSuite("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 42, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
    TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = new CipherSuite("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 43, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
    TLS_DH_anon_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 44, "TLS_DH_anon_WITH_AES_128_CBC_SHA256");
    TLS_DH_anon_WITH_AES_256_CBC_SHA256 = new CipherSuite("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 45, "TLS_DH_anon_WITH_AES_256_CBC_SHA256");
    TLS_RSA_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_RSA_WITH_AES_128_GCM_SHA256", 46, "TLS_RSA_WITH_AES_128_GCM_SHA256");
    TLS_RSA_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_RSA_WITH_AES_256_GCM_SHA384", 47, "TLS_RSA_WITH_AES_256_GCM_SHA384");
    TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 48, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
    TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 49, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
    TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 50, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
    TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 51, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
    TLS_DH_anon_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 52, "TLS_DH_anon_WITH_AES_128_GCM_SHA256");
    TLS_DH_anon_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 53, "TLS_DH_anon_WITH_AES_256_GCM_SHA384");
    TLS_EMPTY_RENEGOTIATION_INFO_SCSV = new CipherSuite("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 54, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
    TLS_ECDH_ECDSA_WITH_NULL_SHA = new CipherSuite("TLS_ECDH_ECDSA_WITH_NULL_SHA", 55, "TLS_ECDH_ECDSA_WITH_NULL_SHA");
    TLS_ECDH_ECDSA_WITH_RC4_128_SHA = new CipherSuite("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 56, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
    TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 57, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
    TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 58, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
    TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 59, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
    TLS_ECDHE_ECDSA_WITH_NULL_SHA = new CipherSuite("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 60, "TLS_ECDHE_ECDSA_WITH_NULL_SHA");
    TLS_ECDHE_ECDSA_WITH_RC4_128_SHA = new CipherSuite("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 61, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
    TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 62, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
    TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 63, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
    TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 64, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
    TLS_ECDH_RSA_WITH_NULL_SHA = new CipherSuite("TLS_ECDH_RSA_WITH_NULL_SHA", 65, "TLS_ECDH_RSA_WITH_NULL_SHA");
    TLS_ECDH_RSA_WITH_RC4_128_SHA = new CipherSuite("TLS_ECDH_RSA_WITH_RC4_128_SHA", 66, "TLS_ECDH_RSA_WITH_RC4_128_SHA");
    TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 67, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
    TLS_ECDH_RSA_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 68, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
    TLS_ECDH_RSA_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 69, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
    TLS_ECDHE_RSA_WITH_NULL_SHA = new CipherSuite("TLS_ECDHE_RSA_WITH_NULL_SHA", 70, "TLS_ECDHE_RSA_WITH_NULL_SHA");
    TLS_ECDHE_RSA_WITH_RC4_128_SHA = new CipherSuite("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 71, "TLS_ECDHE_RSA_WITH_RC4_128_SHA");
    TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 72, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 73, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
    TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 74, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
    TLS_ECDH_anon_WITH_NULL_SHA = new CipherSuite("TLS_ECDH_anon_WITH_NULL_SHA", 75, "TLS_ECDH_anon_WITH_NULL_SHA");
    TLS_ECDH_anon_WITH_RC4_128_SHA = new CipherSuite("TLS_ECDH_anon_WITH_RC4_128_SHA", 76, "TLS_ECDH_anon_WITH_RC4_128_SHA");
    TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA = new CipherSuite("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 77, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
    TLS_ECDH_anon_WITH_AES_128_CBC_SHA = new CipherSuite("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 78, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
    TLS_ECDH_anon_WITH_AES_256_CBC_SHA = new CipherSuite("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 79, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
    TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 80, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
    TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 81, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
    TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 82, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
    TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 83, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
    TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 84, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
    TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 85, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
    TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 = new CipherSuite("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 86, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
    TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 = new CipherSuite("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 87, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
    TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 88, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
    TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 89, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
    TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 90, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
    TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 91, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
    TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 92, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
    TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 93, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
    TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 = new CipherSuite("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 94, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
    TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 = new CipherSuite("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 95, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
    CipherSuite[] arrayOfCipherSuite = new CipherSuite[96];
    arrayOfCipherSuite[0] = TLS_RSA_WITH_NULL_MD5;
    arrayOfCipherSuite[1] = TLS_RSA_WITH_NULL_SHA;
    arrayOfCipherSuite[2] = TLS_RSA_EXPORT_WITH_RC4_40_MD5;
    arrayOfCipherSuite[3] = TLS_RSA_WITH_RC4_128_MD5;
    arrayOfCipherSuite[4] = TLS_RSA_WITH_RC4_128_SHA;
    arrayOfCipherSuite[5] = TLS_RSA_EXPORT_WITH_DES40_CBC_SHA;
    arrayOfCipherSuite[6] = TLS_RSA_WITH_DES_CBC_SHA;
    arrayOfCipherSuite[7] = TLS_RSA_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[8] = TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA;
    arrayOfCipherSuite[9] = TLS_DHE_DSS_WITH_DES_CBC_SHA;
    arrayOfCipherSuite[10] = TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[11] = TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA;
    arrayOfCipherSuite[12] = TLS_DHE_RSA_WITH_DES_CBC_SHA;
    arrayOfCipherSuite[13] = TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[14] = TLS_DH_anon_EXPORT_WITH_RC4_40_MD5;
    arrayOfCipherSuite[15] = TLS_DH_anon_WITH_RC4_128_MD5;
    arrayOfCipherSuite[16] = TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA;
    arrayOfCipherSuite[17] = TLS_DH_anon_WITH_DES_CBC_SHA;
    arrayOfCipherSuite[18] = TLS_DH_anon_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[19] = TLS_KRB5_WITH_DES_CBC_SHA;
    arrayOfCipherSuite[20] = TLS_KRB5_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[21] = TLS_KRB5_WITH_RC4_128_SHA;
    arrayOfCipherSuite[22] = TLS_KRB5_WITH_DES_CBC_MD5;
    arrayOfCipherSuite[23] = TLS_KRB5_WITH_3DES_EDE_CBC_MD5;
    arrayOfCipherSuite[24] = TLS_KRB5_WITH_RC4_128_MD5;
    arrayOfCipherSuite[25] = TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA;
    arrayOfCipherSuite[26] = TLS_KRB5_EXPORT_WITH_RC4_40_SHA;
    arrayOfCipherSuite[27] = TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5;
    arrayOfCipherSuite[28] = TLS_KRB5_EXPORT_WITH_RC4_40_MD5;
    arrayOfCipherSuite[29] = TLS_RSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[30] = TLS_DHE_DSS_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[31] = TLS_DHE_RSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[32] = TLS_DH_anon_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[33] = TLS_RSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[34] = TLS_DHE_DSS_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[35] = TLS_DHE_RSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[36] = TLS_DH_anon_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[37] = TLS_RSA_WITH_NULL_SHA256;
    arrayOfCipherSuite[38] = TLS_RSA_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[39] = TLS_RSA_WITH_AES_256_CBC_SHA256;
    arrayOfCipherSuite[40] = TLS_DHE_DSS_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[41] = TLS_DHE_RSA_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[42] = TLS_DHE_DSS_WITH_AES_256_CBC_SHA256;
    arrayOfCipherSuite[43] = TLS_DHE_RSA_WITH_AES_256_CBC_SHA256;
    arrayOfCipherSuite[44] = TLS_DH_anon_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[45] = TLS_DH_anon_WITH_AES_256_CBC_SHA256;
    arrayOfCipherSuite[46] = TLS_RSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[47] = TLS_RSA_WITH_AES_256_GCM_SHA384;
    arrayOfCipherSuite[48] = TLS_DHE_RSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[49] = TLS_DHE_RSA_WITH_AES_256_GCM_SHA384;
    arrayOfCipherSuite[50] = TLS_DHE_DSS_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[51] = TLS_DHE_DSS_WITH_AES_256_GCM_SHA384;
    arrayOfCipherSuite[52] = TLS_DH_anon_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[53] = TLS_DH_anon_WITH_AES_256_GCM_SHA384;
    arrayOfCipherSuite[54] = TLS_EMPTY_RENEGOTIATION_INFO_SCSV;
    arrayOfCipherSuite[55] = TLS_ECDH_ECDSA_WITH_NULL_SHA;
    arrayOfCipherSuite[56] = TLS_ECDH_ECDSA_WITH_RC4_128_SHA;
    arrayOfCipherSuite[57] = TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[58] = TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[59] = TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[60] = TLS_ECDHE_ECDSA_WITH_NULL_SHA;
    arrayOfCipherSuite[61] = TLS_ECDHE_ECDSA_WITH_RC4_128_SHA;
    arrayOfCipherSuite[62] = TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[63] = TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[64] = TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[65] = TLS_ECDH_RSA_WITH_NULL_SHA;
    arrayOfCipherSuite[66] = TLS_ECDH_RSA_WITH_RC4_128_SHA;
    arrayOfCipherSuite[67] = TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[68] = TLS_ECDH_RSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[69] = TLS_ECDH_RSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[70] = TLS_ECDHE_RSA_WITH_NULL_SHA;
    arrayOfCipherSuite[71] = TLS_ECDHE_RSA_WITH_RC4_128_SHA;
    arrayOfCipherSuite[72] = TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[73] = TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[74] = TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[75] = TLS_ECDH_anon_WITH_NULL_SHA;
    arrayOfCipherSuite[76] = TLS_ECDH_anon_WITH_RC4_128_SHA;
    arrayOfCipherSuite[77] = TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA;
    arrayOfCipherSuite[78] = TLS_ECDH_anon_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[79] = TLS_ECDH_anon_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[80] = TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[81] = TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384;
    arrayOfCipherSuite[82] = TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[83] = TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384;
    arrayOfCipherSuite[84] = TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[85] = TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384;
    arrayOfCipherSuite[86] = TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256;
    arrayOfCipherSuite[87] = TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384;
    arrayOfCipherSuite[88] = TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[89] = TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384;
    arrayOfCipherSuite[90] = TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[91] = TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384;
    arrayOfCipherSuite[92] = TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[93] = TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384;
    arrayOfCipherSuite[94] = TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[95] = TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384;
    a = arrayOfCipherSuite;
  }

  private CipherSuite(String paramString, int paramInt1, int paramInt2)
  {
    this.javaName = paramString;
  }

  public static CipherSuite forJavaName(String paramString)
  {
    if (paramString.startsWith("SSL_"))
      return valueOf("TLS_" + paramString.substring(4));
    return valueOf(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.CipherSuite
 * JD-Core Version:    0.6.0
 */