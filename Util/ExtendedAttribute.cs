//
// ExtendedAttribute.cs
//
// Copyright (C) 2004 Novell, Inc.
//

//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//

// FIXME: This is not portable to Win32

using System;
using System.IO;
using System.Text;
using System.Runtime.InteropServices;
using Mono.Unix.Native;

namespace Beagrep.Util {

	public class ExtendedAttribute {

		// FIXME: Deprecate post 0.3.3

		private const string AttrName = "user.Beagrep";

		static Encoding encoding = new UTF8Encoding ();

		// Set a beagrep attribute
		public static void Set (string path, string value) {
			Set (path, AttrName, value);
		}

		// Set a non-beagrep attribute
		private static void Set (string path, string name, string value)
		{
			throw new IOException ("Could not set extended attribute on " + path);
		}

		// Check if a beagrep attribute exists
		public static bool Exists (string path)
		{
			return false;
		}

		// FIXME: Deprecate post 0.3.3
		public static bool OldExists (string path, string name)
		{
			return false;
		}

		// Get a beagrep attribute
		public static string Get (string path)
		{
			return null;
		}

		// Get a non-beagrep attribute
		public static string Get (string path, string name)
		{
			return null;
		}

		// Remove a beagrep attribute
		public static void Remove (string path)
		{
			throw new IOException ("Could not remove extended attribute on " + path);
		}

		// FIXME: Deprecate post 0.3.3
		public static void RemoveOld (string path, string name)
		{
			Remove (path);
		}

		// Remove a non-beagrep attribute
		private static void Remove (string path, string name)
		{
			throw new IOException ("Could not remove extended attribute on " + path);
		}

		// Check to see if it is possible to get and set attributes on a given file.
		public static bool Test (string path)
		{
			return false;
		}

		private static bool ea_support_tested = false;
		private static bool ea_supported = false;

		public static bool Supported {
			get {
				return false;
			}
		}
	}
}
